-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_toside';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_toside';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_toside';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_toside';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tocheckpage';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tocheckpage';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tocheckpage';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tocheckpage';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_countactive';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_countactive';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_countactive';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_countactive';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_countviews';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_countviews';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_countviews';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_countviews';

