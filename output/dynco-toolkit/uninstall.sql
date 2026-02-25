-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynco_manager_role_option', 'dynco_support_svg_option', 'dynco_meta_information_option', 'dynco_remove_generator_filter_option', 'dynco_disallow_file_edit_option', 'dynco_remove_dashboard_widgets_option', 'dynco_added_dashboard_widgets_option', 'dynco_mapped_domains_redirect_option', 'dynco_extra_shortcodes_option', 'dynco_search_all_option', 'dynco_suppress_vc_update_alert_option', 'dynco_suppress_auto_update_option', 'dynco_hide_admin_bar_option', 'dynco_add_dashboard_comments_option');
DELETE FROM wp_options WHERE option_name LIKE 'dynco_search_all_option_%';

