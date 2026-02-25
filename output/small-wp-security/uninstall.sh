#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_wp_security_link_meta'
wp option delete 'sp_wp_security_wp_version'
wp option delete 'sp_wp_security_rss'
wp option delete 'sp_wp_security_security_header'
wp option delete 'sp_wp_security_emojis'
wp option delete 'sp_wp_security_comments'

