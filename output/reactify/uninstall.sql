-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reactify_reaction_title', 'reactify_reaction_title_enable', 'reactify_selected_reaction_type', 'reactify_custom_emojis', 'reactify_reaction_title_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reactify_disable_reactions');
DELETE FROM wp_usermeta WHERE meta_key IN ('reactify_disable_reactions');
DELETE FROM wp_termmeta WHERE meta_key IN ('reactify_disable_reactions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reactify_disable_reactions');

