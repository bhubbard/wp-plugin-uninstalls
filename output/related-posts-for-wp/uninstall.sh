#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rp4wp'
wp option delete 'rp4wp_do_install'
wp option delete 'rp4wp_install_date'
wp option delete 'rp4wp_hide_nag'

