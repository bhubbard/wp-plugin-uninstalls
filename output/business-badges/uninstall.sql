-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BB_widget_gplus_act', 'BB_widget_facebook_act', 'BB_admin_title', 'BB_admin_number', 'BB_widget_title', 'BB_widget_urlgplus', 'BB_widget_urlfacebook', 'BB_widget_altfacebook', 'BB_widget_idfacebook', 'BB_widget_bidfacebook', 'BB_widget_keyfacebook', 'BB_like_widget_title', 'BB_like_widget_gplus_act', 'BB_like_widget_facebook_act');

