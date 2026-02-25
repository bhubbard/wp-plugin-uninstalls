#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplycap_key'
wp option delete 'simplycap_website'
wp option delete 'simplycap_commentform'
wp option delete 'simplycap_hideregister'

