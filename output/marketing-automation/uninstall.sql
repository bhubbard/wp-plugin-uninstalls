-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vbout_tracking_activated', 'vbout_status', 'vbout_plugin_version', 'vbout_last_nonce', 'vbout_api_business', 'vbout_flash_message', 'vbout_sm_channels', 'vbout_em_lists', 'vbout_em_forms_default', 'vbout_current_tab', 'vbout_tracking_domains', 'vbout_method', 'vbout_userkey', 'vbout_appkey', 'vbout_clientsecret', 'vbout_authtoken', 'vbout_plugin_availability', 'vbout_plugin_attachment', 'vbout_sm_activated', 'vbout_em_activated', 'vbout_tracking_code', 'vbout_em_forms', 'vbout_em_emailname', 'vbout_em_emailsubject', 'vbout_em_fromemail', 'vbout_em_fromname', 'vbout_em_replyto', 'vbout_sync_emaillist', 'vbout_sync_exclude_ids', 'vbout_tracking_domain', 'vbout_sync_exclude_listid');

