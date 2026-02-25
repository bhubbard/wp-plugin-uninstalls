#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PreventCopyBlogs_ser'
wp option delete 'PreventCopyBlogs_usr'
wp option delete 'PreventCopyBlogs_pass'
wp option delete 'PreventCopyBlogs_dbname'
wp option delete 'PreventCopyBlogs_dbdel'
wp option delete 'PreventCopyBlogs_dbno'
wp option delete 'PreventCopyBlogs_nrc'
wp option delete 'PreventCopyBlogs_nts'
wp option delete 'PreventCopyBlogs_nrc_t'
wp option delete 'PreventCopyBlogs_nrc_text'

