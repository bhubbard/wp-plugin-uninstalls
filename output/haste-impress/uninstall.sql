-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'presentations_term_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('data-x', 'data-y', 'data-z', 'data-rotate-x', 'data-rotate-y', 'data-rotate-z', 'data-scale', 'step-class', 'head-text', 'step-format', 'step-empty', 'step_bgimage');
DELETE FROM wp_usermeta WHERE meta_key IN ('data-x', 'data-y', 'data-z', 'data-rotate-x', 'data-rotate-y', 'data-rotate-z', 'data-scale', 'step-class', 'head-text', 'step-format', 'step-empty', 'step_bgimage');
DELETE FROM wp_termmeta WHERE meta_key IN ('data-x', 'data-y', 'data-z', 'data-rotate-x', 'data-rotate-y', 'data-rotate-z', 'data-scale', 'step-class', 'head-text', 'step-format', 'step-empty', 'step_bgimage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('data-x', 'data-y', 'data-z', 'data-rotate-x', 'data-rotate-y', 'data-rotate-z', 'data-scale', 'step-class', 'head-text', 'step-format', 'step-empty', 'step_bgimage');

