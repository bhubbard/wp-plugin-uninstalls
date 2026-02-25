#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ipt_content'
wp option delete 'wp_ipt_alternate'
wp option delete 'wp_ipt_nomark'

