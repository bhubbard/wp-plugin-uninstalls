#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blnotifier_cache'
wp option delete 'blnotifier_pause_frontend_scanning'
wp option delete 'blnotifier_pause_results_verification'
wp option delete 'blnotifier_status_codes'
wp option delete 'blnotifier_has_updated_settings'
wp option delete 'blnotifier_enable_warnings'
wp option delete 'blnotifier_post_types'
wp option delete 'blnotifier_include_images'
wp option delete 'blnotifier_documents_use_head'
wp option delete 'blnotifier_user_agent'
wp option delete 'blnotifier_timeout'
wp option delete 'blnotifier_allow_redirects'
wp option delete 'blnotifier_max_redirects'
wp option delete 'blnotifier_ssl_verify'
wp option delete 'eri_files_folder'
wp option delete 'blnotifier_editable_roles'
wp option delete 'blnotifier_mark_code_zero_broken'
wp option delete 'blnotifier_enable_delete_source'
wp option delete 'blnotifier_enable_emailing'
wp option delete 'blnotifier_emails'
wp option delete 'blnotifier_enable_discord'
wp option delete 'blnotifier_discord'
wp option delete 'blnotifier_enable_msteams'
wp option delete 'blnotifier_msteams'
wp option delete 'blnotifier_enable_good_links'
wp option delete 'blnotifier_show_in_console'
wp option delete 'blnotifier_scan_header'
wp option delete 'blnotifier_scan_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_url'"
