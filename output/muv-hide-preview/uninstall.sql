-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('muv-hp-ausgabe-typ', 'muv-hp-ausgabe-seite', 'muv-hp-freischalten-key', 'muv-hp-verstecken-aktiv', 'muv-hp-verstecken-bereiche-inkl', 'muv-hp-verstecken-bereiche-exkl');

