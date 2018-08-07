light_layer = layer_get_id("Lighting");
light_surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

alpha = 0.5;

layer_script_begin(light_layer,lightBegin);
layer_script_end(light_layer,lightEnd);