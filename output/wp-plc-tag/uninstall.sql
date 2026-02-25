-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plctag_elementor_tag_list_active', 'plctag_elementor_active', 'plcarticle_listview_active', 'plcarticle_listview_slug');

