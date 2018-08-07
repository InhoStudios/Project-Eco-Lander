if(event_type == ev_draw && event_number == 0) {
	if(!surface_exists(lightEng.light_surf)){
		lightEng.light_surf = surface_create(camera_get_view_width(view_camera[0]) * 2, camera_get_view_height(view_camera[0]) * 2);
	}
	
	var cam = view_camera[0];
	
	surface_set_target(lightEng.light_surf);
	
	camera_apply(cam);
	
	draw_clear_alpha(c_black,lightEng.alpha);
	gpu_set_blendmode(bm_add);
	
}
