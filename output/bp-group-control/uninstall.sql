-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpgc-identifying-enable-private', 'bpgc-identifying-enable-public', 'bpgc-member-control-enable-private', 'bpgc-member-control-enable-public', 'bpgc-group-admin-can-add-existing', 'user-groups-have-member-control-existing', 'bpgc-group-admin-can-add-new', 'user-groups-have-member-control-new', 'bpgc-users-can-create-groups', 'bpgc-group-admin-can-delete', 'bpgc-text-before-identifying', 'bpgc-users-can-select-identifying', 'bpgc-site-admins-can-select-identifying', 'bpgc-group-admins-can-select-identifying');
DELETE FROM wp_options WHERE option_name LIKE 'bpgc-group-admin-can-add-%';

