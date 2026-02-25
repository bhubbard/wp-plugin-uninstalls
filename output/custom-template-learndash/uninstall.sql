-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctlearndash_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('learndash_course_template', 'course_template', 'site-sidebar-layout', 'site-content-layout', 'site-post-title', 'ast-featured-img', '_wpb_shortcodes_custom_css', '_fl_builder_enabled', '_wpb_vc_js_status', 'tcb_editor_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('learndash_course_template', 'course_template', 'site-sidebar-layout', 'site-content-layout', 'site-post-title', 'ast-featured-img', '_wpb_shortcodes_custom_css', '_fl_builder_enabled', '_wpb_vc_js_status', 'tcb_editor_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('learndash_course_template', 'course_template', 'site-sidebar-layout', 'site-content-layout', 'site-post-title', 'ast-featured-img', '_wpb_shortcodes_custom_css', '_fl_builder_enabled', '_wpb_vc_js_status', 'tcb_editor_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('learndash_course_template', 'course_template', 'site-sidebar-layout', 'site-content-layout', 'site-post-title', 'ast-featured-img', '_wpb_shortcodes_custom_css', '_fl_builder_enabled', '_wpb_vc_js_status', 'tcb_editor_enabled');

