-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jrm_killboard_corporation_id', 'jrm_killboard_elements', 'jrm_killboard_be_elements', 'jrm_killboard_lastSync', 'jrm_killboard_esi_expires_in', 'jrm_killboard_esi_access_token', 'jrm_killboard_esi_refresh_token', 'jrm_killboard_killmail_error', 'jrm_killboard_killmail_log', 'jrm_killboard_fetch_start', 'jrm_killboard_esi_client_id', 'jrm_killboard_esi_client_secret', 'jrm_killboard_oauth_version', 'jrm_killboard_plugin_version', 'jrm_killboard_cronjob_endpoint', 'jrm_killboard_cronjob_secret', 'jrm_killboard_title', 'jrm_killboard_title_align', 'jrm_killboard_max_sync', 'jrm_killboard_font_size', 'jrm_killboard_image_size', 'jrm_killboard_margin', 'jrm_killboard_padding', 'jrm_killboard_kills_type', 'jrm_killboard_kills_bg', 'jrm_killboard_kills_text', 'jrm_killboard_deaths_bg', 'jrm_killboard_deaths_text', 'jrm_killboard_title_color', 'jrm_killboard_title_text', 'jrm_killboard_table_header_color', 'jrm_killboard_table_header_text', 'jrm_killboard_footer_color', 'jrm_killboard_footer_text', 'jrm_killboard_inspect_color', 'jrm_killboard_inspect_text', 'jrm_killboard_cols', 'jrm_killboard_dev_sign', 'jrm_killboard_btn_styles', 'jrm_killboard_btn_align', 'jrm_killboard_image_styles', 'jrm_killboard_last_page', 'jrm_killboard_inspect_items', 'jrm_killboard_price_error', 'jrm_killboard_price_log', 'jrm_killboard_esi_init_call', 'jrm_killboard_table_hedaer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

