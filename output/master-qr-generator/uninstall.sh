#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'masterqr_settings'
wp option delete 'masterqr_pagety'
wp option delete 'masterqr_logo_posttype'
wp option delete 'masterqr_link_generator'
wp option delete 'MASTERLite_QR_shortcode_docs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'masterqr_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'masterqr_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'masterqr_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'masterqr_meta'"
