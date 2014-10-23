
/*
 * MinionEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MinionEntity : SEEntity
{
	SESprite monster;
	int w;
	int h;
	public static int mx;	//monster x
	public static int my;	//monster y
	public static int px1;	//player x
	public static int py1;	//player y
	
	public void initialize (SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("banana", "banana", 0.1*w);
		//rsc.prepare_image("banana", "banana", 0.1*w, 0.1*w);

		monster = add_sprite_for_image(SEImage.for_resource("banana"));
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(Math.random(0,w), Math.random(0,h));
		
	}

	public void tick (TimeVal now, double delta)
	{
		base.tick(now,delta);
		
		px1 = MainScene.x;
		py1 = MainScene.y;
		mx = monster.get_x();
		my = monster.get_y();
		
		//monster.move(mx + (px1-mx)/5, my + (py1-my)/5);
		//monster.move(mx + (MainScene.x-mx)/20, my + (MainScene.y-my)/20);

		monster.move(mx + (px1-mx) / Math.random(10,100), my + (py1-my) / Math.random(10,100));

	}

	public void cleanup()
	{
		base.cleanup();
	}
}
