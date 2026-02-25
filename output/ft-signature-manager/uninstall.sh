#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ft_signature_01'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ft_signature_01'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ft_signature_01'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ft_signature_01'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ft_signature_01_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ft_signature_01_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ft_signature_01_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ft_signature_01_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ft_signature_manager'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ft_signature_manager'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ft_signature_manager'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ft_signature_manager'"
