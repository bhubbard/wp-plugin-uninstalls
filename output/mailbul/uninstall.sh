#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailbul_mid'
wp option delete 'mailbul_enable'
wp option delete 'mailbul_url'
wp option delete 'mailbul_username'
wp option delete 'mailbul_usertoken'
wp option delete 'mailbul_importall'

