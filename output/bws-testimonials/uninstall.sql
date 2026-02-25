-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tstmnls_options', 'rtng_options', 'gglcptch_options', 'widget_tstmnls_testimonails_widget', 'bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'sndr_options', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonials_info', '_testimonials_info', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonials_info', '_testimonials_info', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonials_info', '_testimonials_info', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonials_info', '_testimonials_info', 'dismissed_wp_pointers');

