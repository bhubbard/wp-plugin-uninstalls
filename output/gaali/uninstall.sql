-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toxicity_plugin_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('identity_attack', 'insult', 'obscene', 'severe_toxicity', 'sexual_explicit', 'threat', 'toxicity');
DELETE FROM wp_usermeta WHERE meta_key IN ('identity_attack', 'insult', 'obscene', 'severe_toxicity', 'sexual_explicit', 'threat', 'toxicity');
DELETE FROM wp_termmeta WHERE meta_key IN ('identity_attack', 'insult', 'obscene', 'severe_toxicity', 'sexual_explicit', 'threat', 'toxicity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('identity_attack', 'insult', 'obscene', 'severe_toxicity', 'sexual_explicit', 'threat', 'toxicity');

