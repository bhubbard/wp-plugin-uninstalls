-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('termindatum', 'termindatumbis', 'zeitvon', 'zeitbis', 'ort', 'requestbf');
DELETE FROM wp_usermeta WHERE meta_key IN ('termindatum', 'termindatumbis', 'zeitvon', 'zeitbis', 'ort', 'requestbf');
DELETE FROM wp_termmeta WHERE meta_key IN ('termindatum', 'termindatumbis', 'zeitvon', 'zeitbis', 'ort', 'requestbf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('termindatum', 'termindatumbis', 'zeitvon', 'zeitbis', 'ort', 'requestbf');

