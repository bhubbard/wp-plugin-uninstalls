-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wavatar_auto', 'wavatar_noplug', 'wavatar_size', 'wavatar_border', 'wavatar_suffix', 'wavatar_prefix', 'wavatar_gravatars', 'wavatar_rating', 'wavatar_email_blank');

