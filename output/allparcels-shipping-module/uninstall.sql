-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allparcels_api', 'allparcels_terminals', 'allparcels_kurjeriai', 'allparcels_pickup_point', 'allparcels_post_office');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('terminalui', 'kurjeriui', 'express_paslauga', 'pristatymas_sestadieni', 'dokumentu_grazinimas', 'informuoti_pastu', 'informuoti_pastug', 'informuoti_sms', 'informuoti_smsg', 'savarankiskas', 'skyriui', 'taskui', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('terminalui', 'kurjeriui', 'express_paslauga', 'pristatymas_sestadieni', 'dokumentu_grazinimas', 'informuoti_pastu', 'informuoti_pastug', 'informuoti_sms', 'informuoti_smsg', 'savarankiskas', 'skyriui', 'taskui', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('terminalui', 'kurjeriui', 'express_paslauga', 'pristatymas_sestadieni', 'dokumentu_grazinimas', 'informuoti_pastu', 'informuoti_pastug', 'informuoti_sms', 'informuoti_smsg', 'savarankiskas', 'skyriui', 'taskui', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('terminalui', 'kurjeriui', 'express_paslauga', 'pristatymas_sestadieni', 'dokumentu_grazinimas', 'informuoti_pastu', 'informuoti_pastug', 'informuoti_sms', 'informuoti_smsg', 'savarankiskas', 'skyriui', 'taskui', '_payment_method');

