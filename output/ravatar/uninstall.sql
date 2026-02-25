-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ravatar_auto', 'ravatar_size', 'ravatar_border', 'ravatar_suffix', 'ravatar_prefix', 'ravatar_noplug', 'ravatar_gravatars', 'ravatar_rating', 'ravatar_email_blank');

