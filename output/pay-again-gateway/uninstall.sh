#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iamport_rest_key'
wp option delete 'iamport_rest_secret'
wp option delete '_iamport_customer_prefix'
wp option delete '_iamport_rsa_keyphrase'
wp option delete '_iamport_rsa_private_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iamport_rest_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iamport_rest_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iamport_rest_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iamport_rest_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iamport_rest_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iamport_rest_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iamport_rest_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iamport_rest_secret'"
