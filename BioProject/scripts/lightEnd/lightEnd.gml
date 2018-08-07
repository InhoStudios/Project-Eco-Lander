if(event_type == ev_draw && event_number == 0){
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
	
	surface_set_target(application_surface);
	
		gpu_set_blendmode_ext(bm_dest_color,bm_zero);
	
		draw_surface_ext(lightEng.light_surf, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), 1,1, 0,c_white,lightEng.alpha);
		
		gpu_set_blendmode(bm_normal);
		
	surface_reset_target();
}