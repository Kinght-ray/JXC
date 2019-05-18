package org.ray.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 生成验证码
 * @author ray
 *
 */
@Controller
public class DrawImageController {

	public static final int WIDTH = 120;
	public static final int HEIGHT = 45;
	
	 /**
     * 生成图片
     * @param request
     * @param response
     */
    @RequestMapping("/drawImage")
    public void drawImage(HttpServletRequest request, HttpServletResponse response)throws Exception{
    	request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 创建缓存
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = bi.getGraphics();
		setBackGround(g);
		setBorder(g);
		drawRandomLine(g);
		String random = drawRandomNum((Graphics2D) g).toLowerCase();//忽略大小写
		request.getSession().setAttribute("checkcode", random);
		response.setContentType("image/jpeg");
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 将图片写给浏览器
		ImageIO.write(bi, "jpg", response.getOutputStream());
    }
    
    /**
	 * 设置背景色
	 * 
	 * @param g
	 */
	private void setBackGround(Graphics g) {
		g.setColor(new Color(45, 45, 45));
		g.fillRect(0, 0, WIDTH, HEIGHT);

	}

	/**
	 * 设置边框
	 * 
	 * @param g
	 */
	private void setBorder(Graphics g) {
		g.setColor(new Color(33, 33, 33));
		g.drawRect(1, 1, WIDTH - 2, HEIGHT - 2);
	}

	/**
	 * 画随机线条
	 * 
	 * @param g
	 */
	private void drawRandomLine(Graphics g) {
		g.setColor(Color.WHITE);
		for (int i = 0; i < 5; i++) {
			int x1 = new Random().nextInt(WIDTH);
			int y1 = new Random().nextInt(HEIGHT);
			int x2 = new Random().nextInt(WIDTH);
			int y2 = new Random().nextInt(HEIGHT);
			g.drawLine(x1, y1, x2, y2);
		}

	}

	/**
	 * 画随机汉字
	 * 
	 * @param g
	 * @return
	 */
	private String drawRandomNum(Graphics2D g) {
		StringBuffer sb = new StringBuffer();
		g.setColor(Color.WHITE);
		g.setFont(new Font("宋体", Font.BOLD, 25));
		char [] base = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K',
				'L', 'M', 'N', 'P', 'q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
				'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

		int x = 5;
		for (int i = 0; i < 4; i++) {
			int degree = new Random().nextInt() % 30;
			String ch = base[new Random().nextInt(base.length)] + "";
			//String ch = base.charAt(new Random().nextInt(base.length())) + "";
			sb.append(ch);
			g.rotate(degree * Math.PI / 180, x, 20);
			g.drawString(ch, x, 30);
			g.rotate(-degree * Math.PI / 180, x, 20);
			x += 30;
		}
		System.out.println(sb.toString());
		return sb.toString();
	}
}
