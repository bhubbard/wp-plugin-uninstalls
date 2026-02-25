-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentad_api_key', 'contentad_install_key', 'contentad_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('placement', '_ca_widget_inactive', '_ca_display_cat_tag', '_ca_display_home', '_excluded_categories', '_excluded_tags', '_widget_guid', '_widget_id', '_thumbnail_id', '_widget_type', '_widget_exit_pop', '_widget_mobile_exit_pop', 'exclude_tags', 'exclude_cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('placement', '_ca_widget_inactive', '_ca_display_cat_tag', '_ca_display_home', '_excluded_categories', '_excluded_tags', '_widget_guid', '_widget_id', '_thumbnail_id', '_widget_type', '_widget_exit_pop', '_widget_mobile_exit_pop', 'exclude_tags', 'exclude_cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('placement', '_ca_widget_inactive', '_ca_display_cat_tag', '_ca_display_home', '_excluded_categories', '_excluded_tags', '_widget_guid', '_widget_id', '_thumbnail_id', '_widget_type', '_widget_exit_pop', '_widget_mobile_exit_pop', 'exclude_tags', 'exclude_cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('placement', '_ca_widget_inactive', '_ca_display_cat_tag', '_ca_display_home', '_excluded_categories', '_excluded_tags', '_widget_guid', '_widget_id', '_thumbnail_id', '_widget_type', '_widget_exit_pop', '_widget_mobile_exit_pop', 'exclude_tags', 'exclude_cats');

