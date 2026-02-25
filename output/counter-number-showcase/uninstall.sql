-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsm_cns_default_settings', 'wpsm_counterbox_default_settings', 'wpsm_cns_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Counter_Meta_Settings', 'manisha_demo_data', 'manisha_demo_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('Counter_Meta_Settings', 'manisha_demo_data', 'manisha_demo_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('Counter_Meta_Settings', 'manisha_demo_data', 'manisha_demo_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Counter_Meta_Settings', 'manisha_demo_data', 'manisha_demo_count');

