#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebook_download_db_version'
wp option delete 'ebookdownload_lang_name'
wp option delete 'ebookdownload_lang_email'
wp option delete 'ebookdownload_lang_emailwrong'
wp option delete 'ebookdownload_lang_download'
wp option delete 'ebookdownload_lang_thankyou'
wp option delete 'ebookdownload_lang_downloadmessage'
wp option delete 'ebookdownload_lang_emailenterwrong'
wp option delete 'ebookdownload_lang_emailrequired'
wp option delete 'widget_ebook_download'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebookdownloadurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebookdownloadurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebookdownloadurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebookdownloadurl'"
