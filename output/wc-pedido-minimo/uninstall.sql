-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-pedido-minimo-onoff', 'wc-pedido-minimo-usuarios', 'wc-pedido-minimo-funcionamento', 'wc-pedido-minimo-valor', 'wc-pedido-minimo-quantidade', 'wc-pedido-minimo-pagamentos');

