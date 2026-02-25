-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fa_enqueue_fa7_fe', 'fa_enqueue_fa6_fe', 'fa_enqueue_fe', 'fa_enqueue_kit', 'fa_enqueue_kit_fe', 'fa_enqueue_local_fe', 'fa_external_css', 'fa_enqueue_fa_source', 'fa_enqueue_fa7_be', 'fa_enqueue_fa6_be', 'fa_enqueue_be', 'fa_enqueue_kit_be', 'fa_enqueue_local_be', 'fa_enqueue_fa6_setup', 'fa_enqueue_fa6_source', 'fa_enqueue_fa7_source');

