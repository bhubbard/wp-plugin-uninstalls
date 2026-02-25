#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwolle_gb-showSmilies'
wp option delete 'gwolle_gb-showLineBreaks'
wp option delete 'gwolle_gb-showEntryIcons'
wp option delete 'gwolle_gb-store_ip'
wp option delete 'gwolle_gb-entries_per_page'
wp option delete 'gwolle_gb-akismet-active'
wp option delete 'gwolle_gb-notifyByMail'
wp option delete 'gwolle_gb-require_login'
wp option delete 'gwolle_gb-labels_float'
wp option delete 'gwolle_gb-header'
wp option delete 'gwolle_gb-notice'
wp option delete 'gwolle_gb-form_ajax'
wp option delete 'gwolle_gb-form'
wp option delete 'gwolle_gb-entriesPerPage'
wp option delete 'gwolle_gb-excerpt_length'
wp option delete 'gwolle_gb-linkAuthorWebsite'
wp option delete 'gwolle_gb-admin_style'
wp option delete 'gwolle_gb-navigation'
wp option delete 'gwolle_gb-paginate_all'
wp option delete 'gwolle_gb-read'
wp option delete 'gwolle_gb-moderate-entries'
wp option delete 'gwolle_gb-refuse-spam'
wp option delete 'gwolle_gb-honeypot'
wp option delete 'gwolle_gb-nonce'
wp option delete 'gwolle_gb-longtext'
wp option delete 'gwolle_gb-linkchecker'
wp option delete 'gwolle_gb-timeout'
wp option delete 'gwolle_gb-sfs'
wp option delete 'gwolle_gb-antispam-question'
wp option delete 'gwolle_gb-antispam-answer'
wp option delete 'gwolle_gb_addon-moderation_keys'
wp option delete 'gwolle_gb-mail-from'
wp option delete 'gwolle_gb-notify-with-spam'
wp option delete 'gwolle_gb-adminMailContent'
wp option delete 'gwolle_gb-mail_author'
wp option delete 'gwolle_gb-authorMailContent'
wp option delete 'gwolle_gb-mail_author_moderation'
wp option delete 'gwolle_gb-authormoderationcontent'
wp option delete 'gwolle_gb-mail_admin_replyContent'
wp option delete 'gwolle_gb_version'
wp option delete 'gwolle_gb-access-level'
wp option delete 'gwolle_gb-checkForImport'
wp option delete 'gwolle_gb-post_ID'
wp option delete 'gwolle_gb-guestbookOnly'
wp option delete 'gwolle_gb-defaultMailText'
wp option delete 'gwolle_gb-recaptcha-active'
wp option delete 'gwolle_gb-cleantalk-active'
wp option delete 'gwolle_gb-honeypot_value'
wp option delete 'wordpress_api_key'
wp option delete 'disallowed_keys'

# Delete Transients
wp transient delete 'gwolle_gb_menu_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwolle_gb_check_key_%' OR option_name LIKE '_site_transient_gwolle_gb_check_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwolle_gb_sfs_%' OR option_name LIKE '_site_transient_gwolle_gb_sfs_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwolle_gb_book_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwolle_gb_book_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwolle_gb_book_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwolle_gb_book_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwolle_gb_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwolle_gb_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwolle_gb_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwolle_gb_read'"
