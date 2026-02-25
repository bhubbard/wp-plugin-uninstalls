-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sided_sided_initiate_script', 'sided_sided_embed_placement_options', 'sided_sided_selected_network', 'sided_sided_private_access_token', 'send_cats_to_sided', 'send_tags_to_sided');

