#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_type_to_feed'
wp option delete 'post_cont_in_feed'
wp option delete 'rss_language'

