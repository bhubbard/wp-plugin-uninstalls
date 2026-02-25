#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_tmail_lite_imap_host'
wp option delete 'wp_tmail_lite_imap_port'
wp option delete 'wp_tmail_lite_imap_user'
wp option delete 'wp_tmail_lite_imap_pass'
wp option delete 'wp_tmail_lite_imap_domains'
wp option delete 'wp_tmail_lite_enable_ssl'

