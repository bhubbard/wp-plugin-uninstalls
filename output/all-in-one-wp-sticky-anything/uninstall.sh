#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai1wpsa_settings'
wp option delete 'ai1wpsa_review_dismissed'
wp option delete 'ai1wpsa_install_time'
wp option delete 'ai1wpsa_sticky_header'
wp option delete 'ai1wpsa_z_index'
wp option delete 'ai1wpsa_version'
wp option delete 'stickyclass'

