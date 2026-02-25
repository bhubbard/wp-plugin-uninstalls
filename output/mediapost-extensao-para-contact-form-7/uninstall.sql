-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7mediapost_consumer_key', '_cf7mediapost_consumer_secret', '_cf7mediapost_token', '_cf7mediapost_token_secret', '_cf7mediapost_enabled', '_cf7mediapost_lista', '_cf7mediapost_form_fields', '_cf7mediapost_conta', '_cf7mediapost_campo_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7mediapost_consumer_key', '_cf7mediapost_consumer_secret', '_cf7mediapost_token', '_cf7mediapost_token_secret', '_cf7mediapost_enabled', '_cf7mediapost_lista', '_cf7mediapost_form_fields', '_cf7mediapost_conta', '_cf7mediapost_campo_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7mediapost_consumer_key', '_cf7mediapost_consumer_secret', '_cf7mediapost_token', '_cf7mediapost_token_secret', '_cf7mediapost_enabled', '_cf7mediapost_lista', '_cf7mediapost_form_fields', '_cf7mediapost_conta', '_cf7mediapost_campo_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7mediapost_consumer_key', '_cf7mediapost_consumer_secret', '_cf7mediapost_token', '_cf7mediapost_token_secret', '_cf7mediapost_enabled', '_cf7mediapost_lista', '_cf7mediapost_form_fields', '_cf7mediapost_conta', '_cf7mediapost_campo_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7mediapost_campo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7mediapost_campo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7mediapost_campo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7mediapost_campo_%';

