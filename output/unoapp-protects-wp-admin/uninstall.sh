#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unopwa_active'
wp option delete 'unopwa_before_rewrite_text'
wp option delete 'unopwa_ips'
wp option delete 'unopwa_preview'
wp option delete 'unopwa_rewrite_text'
wp option delete 'unopwa_logout'

