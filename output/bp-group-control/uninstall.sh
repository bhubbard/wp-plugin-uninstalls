#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpgc-identifying-enable-private'
wp option delete 'bpgc-identifying-enable-public'
wp option delete 'bpgc-member-control-enable-private'
wp option delete 'bpgc-member-control-enable-public'
wp option delete 'bpgc-group-admin-can-add-existing'
wp option delete 'user-groups-have-member-control-existing'
wp option delete 'bpgc-group-admin-can-add-new'
wp option delete 'user-groups-have-member-control-new'
wp option delete 'bpgc-users-can-create-groups'
wp option delete 'bpgc-group-admin-can-delete'
wp option delete 'bpgc-text-before-identifying'
wp option delete 'bpgc-users-can-select-identifying'
wp option delete 'bpgc-site-admins-can-select-identifying'
wp option delete 'bpgc-group-admins-can-select-identifying'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bpgc-group-admin-can-add-%'"

