
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite over;
	int w;
	int h;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), w, h));

		rsc.prepare_image("gameover", "gameover", w, h);
		
		over = add_sprite_for_image(SEImage.for_resource("gameover"));
		over.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi)
	{
		switch_scene(new MainScene());
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
