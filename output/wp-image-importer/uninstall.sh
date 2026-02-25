#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpiimp_setting'
wp option delete 'WPIIMP_VERSION_NO'
wp option delete 'wpiimp_fb_credentials'

