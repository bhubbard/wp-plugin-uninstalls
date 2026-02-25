#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_sharer_facebook'
wp option delete 'basic_sharer_twitter'
wp option delete 'basic_sharer_linkedin'
wp option delete 'basic_sharer_bluesky'
wp option delete 'basic_sharer_whatsapp'

