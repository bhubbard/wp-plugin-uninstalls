-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_cid', 'pi_show_ad', 'pi_align', 'pi_width', 'pi_height', 'pi_attr', 'pi_target', 'pi_sid');

