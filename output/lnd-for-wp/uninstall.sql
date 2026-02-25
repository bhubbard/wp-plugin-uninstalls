-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lnd-hide-config', 'lnd-on-chain-address', 'lnd-hostname', 'lnd-conn-timeout', 'lnd-force-ssl', 'lnd-macaroon-name', 'lnd-macaroon', 'lnd-tls-cert-name', 'lnd-ssl-warn');

