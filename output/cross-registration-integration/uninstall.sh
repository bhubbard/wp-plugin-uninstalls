#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cri_transurl'
wp option delete 'cri_encrypt'
wp option delete 'cri_special_params'
wp option delete 'cri_wp_username'
wp option delete 'cri_wp_username_as'
wp option delete 'cri_wp_email'
wp option delete 'cri_wp_email_as'
wp option delete 'cri_wp_password'
wp option delete 'cri_wp_password_as'
wp option delete 'cri_bp_username'
wp option delete 'cri_bp_username_as'
wp option delete 'cri_bp_email'
wp option delete 'cri_bp_email_as'
wp option delete 'cri_bp_password'
wp option delete 'cri_bp_password_as'

