-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppa_search_linkpage', 'wppa_art_monkey_link', 'wppa_art_monkey_on', 'wppa_recursive_log', 'wppa_last_error', 'wppa_search_page', 'wppa_use_wp_upload_dir_locations', 'wppa_source_dir', 'wppa-set', 'wppa_pl_htaccess_required', 'wppa_photo_shortcode_enabled', 'wppa_album_use_gallery', 'wppa_album_crypt_0', 'wppa_album_crypt_1', 'wppa_album_crypt_2', 'wppa_album_crypt_3', 'wppa_album_crypt_9', 'wppa_orphan_album', 'wppa_index_need_remake', 'wppa-media-export-ids', 'wppa_skinfile', 'wppa_cronmsg_is_dismissed', 'wppa_cache_hits', 'wppa_cache_misses', 'wppa_child_list', 'wppa_area_size', 'wppa_sent_mails', 'wppa_slideshow_linktype', 'wppa_ajax_method', 'wppa_pending_message', 'wppa_show_empty_thumblist', 'wppa_set', 'wppa_taglist', 'wppa_catlist', 'wppa_show_scgens');
DELETE FROM wp_options WHERE option_name LIKE 'stop-pdfcnv-%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_mailinglist_%';
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE '%_lastkey';
DELETE FROM wp_options WHERE option_name LIKE '%_lasttimestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_user';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_import_source_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_import_source_%';
DELETE FROM wp_options WHERE option_name LIKE '%_togo';
DELETE FROM wp_options WHERE option_name LIKE '%_last';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_watermark_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_watermark_pos_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_paging_parms_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_rela_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppa_%';

