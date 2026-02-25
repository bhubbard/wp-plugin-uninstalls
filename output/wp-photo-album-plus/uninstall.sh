#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppa_search_linkpage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'stop-pdfcnv-%'"
wp option delete 'wppa_art_monkey_link'
wp option delete 'wppa_art_monkey_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_mailinglist_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lastkey'"
wp option delete 'wppa_recursive_log'
wp option delete 'wppa_last_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lasttimestamp'"
wp option delete 'wppa_search_page'
wp option delete 'wppa_use_wp_upload_dir_locations'
wp option delete 'wppa_source_dir'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user'"
wp option delete 'wppa-set'
wp option delete 'wppa_pl_htaccess_required'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_import_source_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_import_source_%'"
wp option delete 'wppa_photo_shortcode_enabled'
wp option delete 'wppa_album_use_gallery'
wp option delete 'wppa_album_crypt_0'
wp option delete 'wppa_album_crypt_1'
wp option delete 'wppa_album_crypt_2'
wp option delete 'wppa_album_crypt_3'
wp option delete 'wppa_album_crypt_9'
wp option delete 'wppa_orphan_album'
wp option delete 'wppa_index_need_remake'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_togo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last'"
wp option delete 'wppa-media-export-ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_watermark_file_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppa_watermark_pos_%'"
wp option delete 'wppa_skinfile'
wp option delete 'wppa_cronmsg_is_dismissed'
wp option delete 'wppa_cache_hits'
wp option delete 'wppa_cache_misses'
wp option delete 'wppa_child_list'
wp option delete 'wppa_area_size'
wp option delete 'wppa_sent_mails'
wp option delete 'wppa_slideshow_linktype'
wp option delete 'wppa_ajax_method'
wp option delete 'wppa_pending_message'
wp option delete 'wppa_show_empty_thumblist'
wp option delete 'wppa_set'
wp option delete 'wppa_taglist'
wp option delete 'wppa_catlist'
wp option delete 'wppa_show_scgens'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppa_paging_parms_%' OR option_name LIKE '_site_transient_wppa_paging_parms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppa_rela_%' OR option_name LIKE '_site_transient_wppa_rela_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppa_%' OR option_name LIKE '_site_transient_wppa_%'"

# Clear Cron Jobs
wp cron event delete 'wppa_cron_event'
wp cron event delete 'wppa_cleanup'
wp cron event delete 'wppa_update_treecounts'
wp cron event delete 'wppa_do_mailinglist_cron'
wp cron event delete 'wppa_pdf_to_album'

