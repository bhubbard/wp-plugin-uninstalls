#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_post_signature_global'
wp option delete 'wp_post_signature'

