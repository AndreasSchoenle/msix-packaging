# kudos to https://github.com/madwax/3ndparty.cmake.openssl/ for the starting point!
set( XRT "${TARGET_SOURCE_DIR_TRUE}/" )
set( CRYPTO  "${OpenSSL_SOURCE_PATH}/crypto/")
# crypto
list( APPEND XSRC 
${CRYPTO}aes/aes_cbc.c
${CRYPTO}aes/aes_cfb.c
${CRYPTO}aes/aes_core.c
${CRYPTO}aes/aes_ctr.c
${CRYPTO}aes/aes_ecb.c
${CRYPTO}aes/aes_ige.c
${CRYPTO}aes/aes_misc.c
${CRYPTO}aes/aes_ofb.c
${CRYPTO}aes/aes_wrap.c
${CRYPTO}aes/aes_x86core.c

#${CRYPTO}armcap.c	<- TODO: include when x-compiling?
${CRYPTO}asn1/a_bitstr.c
${CRYPTO}asn1/a_bool.c
${CRYPTO}asn1/a_bytes.c
${CRYPTO}asn1/a_d2i_fp.c
${CRYPTO}asn1/a_digest.c
${CRYPTO}asn1/a_dup.c
${CRYPTO}asn1/a_enum.c
${CRYPTO}asn1/a_gentm.c
${CRYPTO}asn1/a_i2d_fp.c
${CRYPTO}asn1/a_int.c
${CRYPTO}asn1/a_mbstr.c
${CRYPTO}asn1/a_object.c
${CRYPTO}asn1/a_octet.c
${CRYPTO}asn1/a_print.c
${CRYPTO}asn1/a_set.c
${CRYPTO}asn1/a_sign.c
${CRYPTO}asn1/a_strex.c
${CRYPTO}asn1/a_strnid.c
${CRYPTO}asn1/a_time.c
${CRYPTO}asn1/a_type.c
${CRYPTO}asn1/a_utctm.c
${CRYPTO}asn1/a_utf8.c
${CRYPTO}asn1/a_verify.c
${CRYPTO}asn1/ameth_lib.c
${CRYPTO}asn1/asn_mime.c
${CRYPTO}asn1/asn_moid.c
${CRYPTO}asn1/asn_pack.c
${CRYPTO}asn1/asn1_err.c
${CRYPTO}asn1/asn1_gen.c
${CRYPTO}asn1/asn1_lib.c
${CRYPTO}asn1/asn1_par.c
${CRYPTO}asn1/bio_asn1.c
${CRYPTO}asn1/bio_ndef.c
${CRYPTO}asn1/d2i_pr.c
${CRYPTO}asn1/d2i_pu.c
${CRYPTO}asn1/evp_asn1.c
${CRYPTO}asn1/f_enum.c
${CRYPTO}asn1/f_int.c
${CRYPTO}asn1/f_string.c
${CRYPTO}asn1/i2d_pr.c
${CRYPTO}asn1/i2d_pu.c
${CRYPTO}asn1/n_pkey.c
${CRYPTO}asn1/nsseq.c
${CRYPTO}asn1/p5_pbe.c
${CRYPTO}asn1/p5_pbev2.c
${CRYPTO}asn1/p8_pkey.c
${CRYPTO}asn1/t_bitst.c
${CRYPTO}asn1/t_crl.c
${CRYPTO}asn1/t_pkey.c
${CRYPTO}asn1/t_req.c
${CRYPTO}asn1/t_spki.c
${CRYPTO}asn1/t_x509.c
${CRYPTO}asn1/t_x509a.c
${CRYPTO}asn1/tasn_dec.c
${CRYPTO}asn1/tasn_enc.c
${CRYPTO}asn1/tasn_fre.c
${CRYPTO}asn1/tasn_new.c
${CRYPTO}asn1/tasn_prn.c
${CRYPTO}asn1/tasn_typ.c
${CRYPTO}asn1/tasn_utl.c
${CRYPTO}asn1/x_algor.c
${CRYPTO}asn1/x_attrib.c
${CRYPTO}asn1/x_bignum.c
${CRYPTO}asn1/x_crl.c
${CRYPTO}asn1/x_exten.c
${CRYPTO}asn1/x_info.c
${CRYPTO}asn1/x_long.c
${CRYPTO}asn1/x_name.c
${CRYPTO}asn1/x_nx509.c
${CRYPTO}asn1/x_pkey.c
${CRYPTO}asn1/x_pubkey.c
${CRYPTO}asn1/x_req.c
${CRYPTO}asn1/x_sig.c
${CRYPTO}asn1/x_spki.c
${CRYPTO}asn1/x_val.c
${CRYPTO}asn1/x_x509.c
${CRYPTO}asn1/x_x509a.c

#${CRYPTO}bf/bf_cbc.c
#${CRYPTO}bf/bf_cfb64.c
#${CRYPTO}bf/bf_ecb.c
#${CRYPTO}bf/bf_enc.c
#${CRYPTO}bf/bf_ofb64.c
#${CRYPTO}bf/bf_opts.c
#${CRYPTO}bf/bf_skey.c
#${CRYPTO}bf/bfspeed.c
#${CRYPTO}bf/bftest.c

#${CRYPTO}bio/b_dump.c
#${CRYPTO}bio/b_print.c
#${CRYPTO}bio/b_sock.c
#${CRYPTO}bio/bf_buff.c
#${CRYPTO}bio/bf_lbuf.c
#${CRYPTO}bio/bf_nbio.c
#${CRYPTO}bio/bf_null.c
#${CRYPTO}bio/bio_cb.c
#${CRYPTO}bio/bio_err.c
#${CRYPTO}bio/bio_lib.c
#${CRYPTO}bio/bss_acpt.c
#${CRYPTO}bio/bss_bio.c
#${CRYPTO}bio/bss_conn.c
#${CRYPTO}bio/bss_dgram.c
#${CRYPTO}bio/bss_fd.c
#${CRYPTO}bio/bss_file.c
#${CRYPTO}bio/bss_log.c
#${CRYPTO}bio/bss_mem.c
#${CRYPTO}bio/bss_null.c
#${CRYPTO}bio/bss_rtcp.c
#${CRYPTO}bio/bss_sock.c

#${CRYPTO}bn/asm/x86_64-gcc.c
${CRYPTO}bn/bn_add.c
${CRYPTO}bn/bn_asm.c
${CRYPTO}bn/bn_blind.c
${CRYPTO}bn/bn_const.c
${CRYPTO}bn/bn_ctx.c
${CRYPTO}bn/bn_depr.c
${CRYPTO}bn/bn_div.c
${CRYPTO}bn/bn_err.c
#${CRYPTO}bn/bn_exp.c <- tmdiff.h missing?!
${CRYPTO}bn/bn_exp2.c
${CRYPTO}bn/bn_gcd.c
${CRYPTO}bn/bn_gf2m.c
${CRYPTO}bn/bn_kron.c
${CRYPTO}bn/bn_lib.c
${CRYPTO}bn/bn_mod.c
${CRYPTO}bn/bn_mont.c
${CRYPTO}bn/bn_mpi.c
${CRYPTO}bn/bn_mul.c
${CRYPTO}bn/bn_nist.c
${CRYPTO}bn/bn_prime.c
${CRYPTO}bn/bn_print.c
${CRYPTO}bn/bn_rand.c
${CRYPTO}bn/bn_recp.c
${CRYPTO}bn/bn_shift.c
${CRYPTO}bn/bn_sqr.c
${CRYPTO}bn/bn_sqrt.c
${CRYPTO}bn/bn_word.c
${CRYPTO}bn/bn_x931p.c
${CRYPTO}bn/bnspeed.c
${CRYPTO}bn/bntest.c
#${CRYPTO}bn/divtest.c <- looks broken on the face of it.
#${CRYPTO}bn/exp.c  <- tmdiff.h missing?!
${CRYPTO}bn/expspeed.c
${CRYPTO}bn/exptest.c
${CRYPTO}bn/rsaz_exp.c
#${CRYPTO}bn/vms-helper.c <- really?!

${CRYPTO}buffer/buf_err.c
${CRYPTO}buffer/buf_str.c
${CRYPTO}buffer/buffer.c

${CRYPTO}camellia/camellia.c
${CRYPTO}camellia/cmll_cbc.c
${CRYPTO}camellia/cmll_cfb.c
${CRYPTO}camellia/cmll_ctr.c
${CRYPTO}camellia/cmll_ecb.c
${CRYPTO}camellia/cmll_misc.c
${CRYPTO}camellia/cmll_ofb.c
${CRYPTO}camellia/cmll_utl.c

${CRYPTO}cast/c_cfb64.c
${CRYPTO}cast/c_ecb.c
${CRYPTO}cast/c_enc.c
${CRYPTO}cast/c_ofb64.c
${CRYPTO}cast/c_skey.c
#${CRYPTO}cast/cast_spd.c <- looks broken on the face of it.
#${CRYPTO}cast/castopts.c <- looks broken on the face of it.
${CRYPTO}cast/casttest.c

${CRYPTO}cmac/cm_ameth.c
${CRYPTO}cmac/cm_pmeth.c
${CRYPTO}cmac/cmac.c

${CRYPTO}cms/cms_asn1.c
${CRYPTO}cms/cms_att.c
${CRYPTO}cms/cms_cd.c
${CRYPTO}cms/cms_dd.c
${CRYPTO}cms/cms_enc.c
${CRYPTO}cms/cms_env.c
${CRYPTO}cms/cms_err.c
${CRYPTO}cms/cms_ess.c
${CRYPTO}cms/cms_io.c
${CRYPTO}cms/cms_kari.c
${CRYPTO}cms/cms_lib.c
${CRYPTO}cms/cms_pwri.c
${CRYPTO}cms/cms_sd.c
${CRYPTO}cms/cms_smime.c

${CRYPTO}comp/c_rle.c
${CRYPTO}comp/c_zlib.c
${CRYPTO}comp/comp_err.c
${CRYPTO}comp/comp_lib.c

#${CRYPTO}conf/cnf_save.c <- looks broken on the face of it.
${CRYPTO}conf/conf_api.c
${CRYPTO}conf/conf_def.c
${CRYPTO}conf/conf_err.c
${CRYPTO}conf/conf_lib.c
${CRYPTO}conf/conf_mall.c
${CRYPTO}conf/conf_mod.c
${CRYPTO}conf/conf_sap.c
#${CRYPTO}conf/test.c <- looks broken on the face of it.

${CRYPTO}constant_time_test.c
${CRYPTO}cpt_err.c
${CRYPTO}cryptlib.c
${CRYPTO}cversion.c

#${CRYPTO}des/cbc_cksm.c
#${CRYPTO}des/cbc_enc.c
#${CRYPTO}des/cbc3_enc.c
#${CRYPTO}des/cfb_enc.c
#${CRYPTO}des/cfb64ede.c
#${CRYPTO}des/cfb64enc.c
#${CRYPTO}des/des_enc.c
#${CRYPTO}des/des_old.c
#${CRYPTO}des/des_old2.c
#${CRYPTO}des/des_opts.c
#${CRYPTO}des/des.c
#${CRYPTO}des/destest.c
#${CRYPTO}des/ecb_enc.c
#${CRYPTO}des/ecb3_enc.c
#${CRYPTO}des/ede_cbcm_enc.c
#${CRYPTO}des/enc_read.c
#${CRYPTO}des/enc_writ.c
#${CRYPTO}des/fcrypt_b.c
#${CRYPTO}des/fcrypt.c
#${CRYPTO}des/ncbc_enc.c
#${CRYPTO}des/ofb_enc.c
#${CRYPTO}des/ofb64ede.c
#${CRYPTO}des/ofb64enc.c
#${CRYPTO}des/pcbc_enc.c
#${CRYPTO}des/qud_cksm.c
#${CRYPTO}des/rand_key.c
#${CRYPTO}des/read_pwd.c
#${CRYPTO}des/read2pwd.c
#${CRYPTO}des/rpc_enc.c
#${CRYPTO}des/rpw.c
#${CRYPTO}des/set_key.c
#${CRYPTO}des/speed.c
#${CRYPTO}des/str2key.c
#${CRYPTO}des/xcbc_enc.c

${CRYPTO}dh/dh_ameth.c
${CRYPTO}dh/dh_asn1.c
${CRYPTO}dh/dh_check.c
${CRYPTO}dh/dh_depr.c
${CRYPTO}dh/dh_err.c
${CRYPTO}dh/dh_gen.c
${CRYPTO}dh/dh_kdf.c
${CRYPTO}dh/dh_key.c
${CRYPTO}dh/dh_lib.c
${CRYPTO}dh/dh_pmeth.c
${CRYPTO}dh/dh_prn.c
${CRYPTO}dh/dh_rfc5114.c
${CRYPTO}dh/dhtest.c
#${CRYPTO}dh/p1024.c <- looks broken on the face of it.
#${CRYPTO}dh/p192.c  <- looks broken on the face of it.
#${CRYPTO}dh/p512.c  <- looks broken on the face of it.

${CRYPTO}dsa/dsa_ameth.c
${CRYPTO}dsa/dsa_asn1.c
${CRYPTO}dsa/dsa_depr.c
${CRYPTO}dsa/dsa_err.c
${CRYPTO}dsa/dsa_gen.c
${CRYPTO}dsa/dsa_key.c
${CRYPTO}dsa/dsa_lib.c
${CRYPTO}dsa/dsa_ossl.c
${CRYPTO}dsa/dsa_pmeth.c
${CRYPTO}dsa/dsa_prn.c
${CRYPTO}dsa/dsa_sign.c
${CRYPTO}dsa/dsa_vrf.c
#${CRYPTO}dsa/dsagen.c  <- looks broken on the face of it.
${CRYPTO}dsa/dsatest.c

#${CRYPTO}dso/dso_beos.c 	<- really?!
${CRYPTO}dso/dso_dl.c
${CRYPTO}dso/dso_dlfcn.c
${CRYPTO}dso/dso_err.c
${CRYPTO}dso/dso_lib.c
${CRYPTO}dso/dso_null.c
${CRYPTO}dso/dso_openssl.c
#${CRYPTO}dso/dso_vms.c 	<- really?!
#${CRYPTO}dso/dso_win32.c 	<- will use PKI stack instead

${CRYPTO}ebcdic.c

#${CRYPTO}ec/ec_ameth.c
#${CRYPTO}ec/ec_asn1.c
#${CRYPTO}ec/ec_check.c
#${CRYPTO}ec/ec_curve.c
#${CRYPTO}ec/ec_cvt.c
#${CRYPTO}ec/ec_err.c
#${CRYPTO}ec/ec_key.c
#${CRYPTO}ec/ec_lib.c
#${CRYPTO}ec/ec_mult.c
#${CRYPTO}ec/ec_oct.c
#${CRYPTO}ec/ec_pmeth.c
#${CRYPTO}ec/ec_print.c
#${CRYPTO}ec/ec2_mult.c
#${CRYPTO}ec/ec2_oct.c
#${CRYPTO}ec/ec2_smpl.c
#${CRYPTO}ec/eck_prn.c
#${CRYPTO}ec/ecp_mont.c
#${CRYPTO}ec/ecp_nist.c
#${CRYPTO}ec/ecp_nistp224.c
#${CRYPTO}ec/ecp_nistp256.c
#${CRYPTO}ec/ecp_nistp521.c
#${CRYPTO}ec/ecp_nistputil.c
#${CRYPTO}ec/ecp_nistz256_table.c
#${CRYPTO}ec/ecp_nistz256.c
#${CRYPTO}ec/ecp_oct.c
#${CRYPTO}ec/ecp_smpl.c
#${CRYPTO}ec/ectest.c

${CRYPTO}ecdh/ecdhtest.c
${CRYPTO}ecdh/ech_err.c
${CRYPTO}ecdh/ech_kdf.c
${CRYPTO}ecdh/ech_key.c
${CRYPTO}ecdh/ech_lib.c
${CRYPTO}ecdh/ech_ossl.c

${CRYPTO}ecdsa/ecdsatest.c
${CRYPTO}ecdsa/ecs_asn1.c
${CRYPTO}ecdsa/ecs_err.c
${CRYPTO}ecdsa/ecs_lib.c
${CRYPTO}ecdsa/ecs_ossl.c
${CRYPTO}ecdsa/ecs_sign.c
${CRYPTO}ecdsa/ecs_vrf.c

${CRYPTO}engine/eng_all.c
${CRYPTO}engine/eng_cnf.c
${CRYPTO}engine/eng_cryptodev.c
${CRYPTO}engine/eng_ctrl.c
${CRYPTO}engine/eng_dyn.c
${CRYPTO}engine/eng_err.c
${CRYPTO}engine/eng_fat.c
${CRYPTO}engine/eng_init.c
${CRYPTO}engine/eng_lib.c
${CRYPTO}engine/eng_list.c
${CRYPTO}engine/eng_openssl.c
${CRYPTO}engine/eng_pkey.c
${CRYPTO}engine/eng_rdrand.c
${CRYPTO}engine/eng_table.c
${CRYPTO}engine/enginetest.c
${CRYPTO}engine/tb_asnmth.c
${CRYPTO}engine/tb_cipher.c
${CRYPTO}engine/tb_dh.c
${CRYPTO}engine/tb_digest.c
${CRYPTO}engine/tb_dsa.c
${CRYPTO}engine/tb_ecdh.c
${CRYPTO}engine/tb_ecdsa.c
${CRYPTO}engine/tb_pkmeth.c
${CRYPTO}engine/tb_rand.c
${CRYPTO}engine/tb_rsa.c
${CRYPTO}engine/tb_store.c

${CRYPTO}err/err_all.c
${CRYPTO}err/err_prn.c
${CRYPTO}err/err.c

${CRYPTO}evp/bio_b64.c
${CRYPTO}evp/bio_enc.c
${CRYPTO}evp/bio_md.c
${CRYPTO}evp/bio_ok.c
${CRYPTO}evp/c_all.c
${CRYPTO}evp/c_allc.c
${CRYPTO}evp/c_alld.c
${CRYPTO}evp/digest.c
${CRYPTO}evp/e_aes_cbc_hmac_sha1.c
${CRYPTO}evp/e_aes_cbc_hmac_sha256.c
${CRYPTO}evp/e_aes.c
${CRYPTO}evp/e_bf.c
${CRYPTO}evp/e_camellia.c
${CRYPTO}evp/e_cast.c
${CRYPTO}evp/e_des.c
${CRYPTO}evp/e_des3.c
#${CRYPTO}evp/e_dsa.c <- looks broken on the face of it.
${CRYPTO}evp/e_idea.c
${CRYPTO}evp/e_null.c
${CRYPTO}evp/e_old.c
${CRYPTO}evp/e_rc2.c
${CRYPTO}evp/e_rc4_hmac_md5.c
${CRYPTO}evp/e_rc4.c
${CRYPTO}evp/e_rc5.c
${CRYPTO}evp/e_seed.c
${CRYPTO}evp/e_xcbc_d.c
${CRYPTO}evp/encode.c
${CRYPTO}evp/evp_acnf.c
${CRYPTO}evp/evp_cnf.c
${CRYPTO}evp/evp_enc.c
${CRYPTO}evp/evp_err.c
${CRYPTO}evp/evp_extra_test.c
${CRYPTO}evp/evp_key.c
${CRYPTO}evp/evp_lib.c
${CRYPTO}evp/evp_pbe.c
${CRYPTO}evp/evp_pkey.c
${CRYPTO}evp/evp_test.c
${CRYPTO}evp/m_dss.c
${CRYPTO}evp/m_dss1.c
${CRYPTO}evp/m_ecdsa.c
${CRYPTO}evp/m_md2.c
${CRYPTO}evp/m_md4.c
${CRYPTO}evp/m_md5.c
${CRYPTO}evp/m_mdc2.c
${CRYPTO}evp/m_null.c
${CRYPTO}evp/m_ripemd.c
${CRYPTO}evp/m_sha.c
${CRYPTO}evp/m_sha1.c
${CRYPTO}evp/m_sigver.c
${CRYPTO}evp/m_wp.c
${CRYPTO}evp/names.c
${CRYPTO}evp/openbsd_hw.c
${CRYPTO}evp/p_dec.c
${CRYPTO}evp/p_enc.c
${CRYPTO}evp/p_lib.c
${CRYPTO}evp/p_open.c
${CRYPTO}evp/p_seal.c
${CRYPTO}evp/p_sign.c
${CRYPTO}evp/p_verify.c
${CRYPTO}evp/p5_crpt.c
${CRYPTO}evp/p5_crpt2.c
${CRYPTO}evp/pmeth_fn.c
${CRYPTO}evp/pmeth_gn.c
${CRYPTO}evp/pmeth_lib.c

${CRYPTO}ex_data.c
${CRYPTO}fips_ers.c

${CRYPTO}hmac/hm_ameth.c
${CRYPTO}hmac/hm_pmeth.c
${CRYPTO}hmac/hmac.c
${CRYPTO}hmac/hmactest.c

${CRYPTO}idea/i_cbc.c
${CRYPTO}idea/i_cfb64.c
${CRYPTO}idea/i_ecb.c
${CRYPTO}idea/i_ofb64.c
${CRYPTO}idea/i_skey.c
#${CRYPTO}idea/idea_spd.c <- looks broken on the face of it.
${CRYPTO}idea/ideatest.c

# JPAKE is disabled (?) who knew...
#${CRYPTO}jpake/jpake_err.c
#${CRYPTO}jpake/jpake.c
#${CRYPTO}jpake/jpaketest.c

${CRYPTO}krb5/krb5_asn.c

${CRYPTO}lhash/lh_stats.c
#${CRYPTO}lhash/lh_test.c <- looks broken on the face of it.
${CRYPTO}lhash/lhash.c

#${CRYPTO}LPdir_nyi.c
#${CRYPTO}LPdir_unix.c
#${CRYPTO}LPdir_vms.c   <- really?!
#${CRYPTO}LPdir_win.c   <- will use PKI stack instead
#${CRYPTO}LPdir_win32.c <- will use PKI stack instead
#${CRYPTO}LPdir_wince.c <- will use PKI stack instead

#${CRYPTO}md2/md2_dgst.c
#${CRYPTO}md2/md2_one.c
#${CRYPTO}md2/md2.c
#${CRYPTO}md2/md2test.c
#${CRYPTO}md4/md4_dgst.c
#${CRYPTO}md4/md4_one.c
#${CRYPTO}md4/md4.c
#${CRYPTO}md4/md4test.c
#${CRYPTO}md5/md5_dgst.c
#${CRYPTO}md5/md5_one.c
#${CRYPTO}md5/md5.c
#${CRYPTO}md5/md5test.c
#${CRYPTO}mdc2/mdc2_one.c
#${CRYPTO}mdc2/mdc2dgst.c
#${CRYPTO}mdc2/mdc2test.c

${CRYPTO}mem_clr.c
${CRYPTO}mem_dbg.c
${CRYPTO}mem.c

${CRYPTO}modes/cbc128.c
${CRYPTO}modes/ccm128.c
${CRYPTO}modes/cfb128.c
${CRYPTO}modes/ctr128.c
${CRYPTO}modes/cts128.c
${CRYPTO}modes/gcm128.c
${CRYPTO}modes/ofb128.c
${CRYPTO}modes/wrap128.c
${CRYPTO}modes/xts128.c

${CRYPTO}o_dir_test.c
${CRYPTO}o_dir.c
${CRYPTO}o_fips.c
${CRYPTO}o_init.c
${CRYPTO}o_str.c
${CRYPTO}o_time.c

${CRYPTO}objects/o_names.c
${CRYPTO}objects/obj_dat.c
${CRYPTO}objects/obj_err.c
${CRYPTO}objects/obj_lib.c
${CRYPTO}objects/obj_xref.c

${CRYPTO}ocsp/ocsp_asn.c
${CRYPTO}ocsp/ocsp_cl.c
${CRYPTO}ocsp/ocsp_err.c
${CRYPTO}ocsp/ocsp_ext.c
${CRYPTO}ocsp/ocsp_ht.c
${CRYPTO}ocsp/ocsp_lib.c
${CRYPTO}ocsp/ocsp_prn.c
${CRYPTO}ocsp/ocsp_srv.c
${CRYPTO}ocsp/ocsp_vfy.c

${CRYPTO}pem/pem_all.c
${CRYPTO}pem/pem_err.c
${CRYPTO}pem/pem_info.c
${CRYPTO}pem/pem_lib.c
${CRYPTO}pem/pem_oth.c
${CRYPTO}pem/pem_pk8.c
${CRYPTO}pem/pem_pkey.c
${CRYPTO}pem/pem_seal.c
${CRYPTO}pem/pem_sign.c
${CRYPTO}pem/pem_x509.c
${CRYPTO}pem/pem_xaux.c
${CRYPTO}pem/pvkfmt.c

#${CRYPTO}pkcs12/p12_add.c
#${CRYPTO}pkcs12/p12_asn.c
#${CRYPTO}pkcs12/p12_attr.c
#${CRYPTO}pkcs12/p12_crpt.c
#${CRYPTO}pkcs12/p12_crt.c
#${CRYPTO}pkcs12/p12_decr.c
#${CRYPTO}pkcs12/p12_init.c
#${CRYPTO}pkcs12/p12_key.c
#${CRYPTO}pkcs12/p12_kiss.c
#${CRYPTO}pkcs12/p12_mutl.c
#${CRYPTO}pkcs12/p12_npas.c
#${CRYPTO}pkcs12/p12_p8d.c
#${CRYPTO}pkcs12/p12_p8e.c
#${CRYPTO}pkcs12/p12_utl.c
#${CRYPTO}pkcs12/pk12err.c

${CRYPTO}pkcs7/bio_pk7.c
${CRYPTO}pkcs7/pk7_asn1.c
${CRYPTO}pkcs7/pk7_attr.c
${CRYPTO}pkcs7/pk7_dgst.c
${CRYPTO}pkcs7/pk7_doit.c
#${CRYPTO}pkcs7/pk7_enc.c <- looks broken on the face of it.
${CRYPTO}pkcs7/pk7_lib.c
${CRYPTO}pkcs7/pk7_mime.c
${CRYPTO}pkcs7/pk7_smime.c
${CRYPTO}pkcs7/pkcs7err.c

${CRYPTO}ppccap.c

#${CRYPTO}pqueue/pq_test.c <- looks broken on the face of it.
${CRYPTO}pqueue/pqueue.c

${CRYPTO}rand/md_rand.c
${CRYPTO}rand/rand_egd.c
${CRYPTO}rand/rand_err.c
${CRYPTO}rand/rand_lib.c
${CRYPTO}rand/rand_nw.c
${CRYPTO}rand/rand_os2.c
${CRYPTO}rand/rand_unix.c
#${CRYPTO}rand/rand_vms.c  <- really?!
#${CRYPTO}rand/rand_win.c  <- will use PKI stack instead
${CRYPTO}rand/randfile.c
${CRYPTO}rand/randtest.c

${CRYPTO}rc2/rc2_cbc.c
${CRYPTO}rc2/rc2_ecb.c
${CRYPTO}rc2/rc2_skey.c
${CRYPTO}rc2/rc2cfb64.c
${CRYPTO}rc2/rc2ofb64.c
#${CRYPTO}rc2/rc2speed.c 	<- looks broken on the face of it.
${CRYPTO}rc2/rc2test.c
${CRYPTO}rc2/tab.c

${CRYPTO}rc4/rc4_enc.c
${CRYPTO}rc4/rc4_skey.c
${CRYPTO}rc4/rc4_utl.c
#${CRYPTO}rc4/rc4.c 		<- don't need this.
#${CRYPTO}rc4/rc4speed.c	<- don't need this.
#${CRYPTO}rc4/rc4test.c		<- don't need this.
${CRYPTO}rc5/rc5_ecb.c
${CRYPTO}rc5/rc5_enc.c
${CRYPTO}rc5/rc5_skey.c
${CRYPTO}rc5/rc5cfb64.c
${CRYPTO}rc5/rc5ofb64.c
#${CRYPTO}rc5/rc5speed.c	<- looks broken on the face of it.
${CRYPTO}rc5/rc5test.c

${CRYPTO}ripemd/rmd_dgst.c
${CRYPTO}ripemd/rmd_one.c
${CRYPTO}ripemd/rmd160.c
${CRYPTO}ripemd/rmdtest.c

${CRYPTO}rsa/rsa_ameth.c
${CRYPTO}rsa/rsa_asn1.c
${CRYPTO}rsa/rsa_chk.c
${CRYPTO}rsa/rsa_crpt.c
${CRYPTO}rsa/rsa_depr.c
${CRYPTO}rsa/rsa_eay.c
${CRYPTO}rsa/rsa_err.c
${CRYPTO}rsa/rsa_gen.c
${CRYPTO}rsa/rsa_lib.c
${CRYPTO}rsa/rsa_none.c
${CRYPTO}rsa/rsa_null.c
${CRYPTO}rsa/rsa_oaep.c
${CRYPTO}rsa/rsa_pk1.c
${CRYPTO}rsa/rsa_pmeth.c
${CRYPTO}rsa/rsa_prn.c
${CRYPTO}rsa/rsa_pss.c
${CRYPTO}rsa/rsa_saos.c
${CRYPTO}rsa/rsa_sign.c
${CRYPTO}rsa/rsa_ssl.c
${CRYPTO}rsa/rsa_test.c
${CRYPTO}rsa/rsa_x931.c

${CRYPTO}s390xcap.c

${CRYPTO}seed/seed_cbc.c
${CRYPTO}seed/seed_cfb.c
${CRYPTO}seed/seed_ecb.c
${CRYPTO}seed/seed_ofb.c
${CRYPTO}seed/seed.c

${CRYPTO}sha/sha_dgst.c
${CRYPTO}sha/sha_one.c
${CRYPTO}sha/sha.c
${CRYPTO}sha/sha1_one.c
${CRYPTO}sha/sha1.c
${CRYPTO}sha/sha1dgst.c
${CRYPTO}sha/sha1test.c
${CRYPTO}sha/sha256.c
${CRYPTO}sha/sha256t.c
${CRYPTO}sha/sha512.c
${CRYPTO}sha/sha512t.c
${CRYPTO}sha/shatest.c

${CRYPTO}sparcv9cap.c

${CRYPTO}srp/srp_lib.c
${CRYPTO}srp/srp_vfy.c
${CRYPTO}srp/srptest.c

${CRYPTO}stack/stack.c

# store is disabled.
#${CRYPTO}store/str_err.c
#${CRYPTO}store/str_lib.c
#${CRYPTO}store/str_mem.c
#${CRYPTO}store/str_meth.c

#${CRYPTO}threads/mttest.c 	<- don't need this
#${CRYPTO}threads/th-lock.c	<- don't need this

${CRYPTO}ts/ts_asn1.c
${CRYPTO}ts/ts_conf.c
${CRYPTO}ts/ts_err.c
${CRYPTO}ts/ts_lib.c
${CRYPTO}ts/ts_req_print.c
${CRYPTO}ts/ts_req_utils.c
${CRYPTO}ts/ts_rsp_print.c
${CRYPTO}ts/ts_rsp_sign.c
${CRYPTO}ts/ts_rsp_utils.c
${CRYPTO}ts/ts_rsp_verify.c
${CRYPTO}ts/ts_verify_ctx.c

${CRYPTO}txt_db/txt_db.c

${CRYPTO}ui/ui_compat.c
${CRYPTO}ui/ui_err.c
${CRYPTO}ui/ui_lib.c
${CRYPTO}ui/ui_openssl.c
${CRYPTO}ui/ui_util.c

${CRYPTO}uid.c

${CRYPTO}whrlpool/wp_block.c
${CRYPTO}whrlpool/wp_dgst.c
${CRYPTO}whrlpool/wp_test.c

${CRYPTO}x509/by_dir.c
${CRYPTO}x509/by_file.c
${CRYPTO}x509/verify_extra_test.c
${CRYPTO}x509/x_all.c
${CRYPTO}x509/x509_att.c
${CRYPTO}x509/x509_cmp.c
${CRYPTO}x509/x509_d2.c
${CRYPTO}x509/x509_def.c
${CRYPTO}x509/x509_err.c
${CRYPTO}x509/x509_ext.c
${CRYPTO}x509/x509_lu.c
${CRYPTO}x509/x509_obj.c
${CRYPTO}x509/x509_r2x.c
${CRYPTO}x509/x509_req.c
${CRYPTO}x509/x509_set.c
${CRYPTO}x509/x509_trs.c
${CRYPTO}x509/x509_txt.c
${CRYPTO}x509/x509_v3.c
${CRYPTO}x509/x509_vfy.c
${CRYPTO}x509/x509_vpm.c
${CRYPTO}x509/x509cset.c
${CRYPTO}x509/x509name.c
${CRYPTO}x509/x509rset.c
${CRYPTO}x509/x509spki.c
${CRYPTO}x509/x509type.c

${CRYPTO}x509v3/pcy_cache.c
${CRYPTO}x509v3/pcy_data.c
${CRYPTO}x509v3/pcy_lib.c
${CRYPTO}x509v3/pcy_map.c
${CRYPTO}x509v3/pcy_node.c
${CRYPTO}x509v3/pcy_tree.c
#${CRYPTO}x509v3/tabtest.c	<- looks broken on the face of it.
${CRYPTO}x509v3/v3_addr.c
${CRYPTO}x509v3/v3_akey.c
${CRYPTO}x509v3/v3_akeya.c
${CRYPTO}x509v3/v3_alt.c
${CRYPTO}x509v3/v3_asid.c
${CRYPTO}x509v3/v3_bcons.c
${CRYPTO}x509v3/v3_bitst.c
#${CRYPTO}x509v3/v3_conf.c	<- looks broken on the face of it.
${CRYPTO}x509v3/v3_cpols.c
${CRYPTO}x509v3/v3_crld.c
${CRYPTO}x509v3/v3_enum.c
${CRYPTO}x509v3/v3_extku.c
${CRYPTO}x509v3/v3_genn.c
${CRYPTO}x509v3/v3_ia5.c
${CRYPTO}x509v3/v3_info.c
${CRYPTO}x509v3/v3_int.c
${CRYPTO}x509v3/v3_lib.c
${CRYPTO}x509v3/v3_ncons.c
${CRYPTO}x509v3/v3_ocsp.c
${CRYPTO}x509v3/v3_pci.c
${CRYPTO}x509v3/v3_pcia.c
${CRYPTO}x509v3/v3_pcons.c
${CRYPTO}x509v3/v3_pku.c
${CRYPTO}x509v3/v3_pmaps.c
${CRYPTO}x509v3/v3_prn.c
${CRYPTO}x509v3/v3_purp.c
${CRYPTO}x509v3/v3_scts.c
${CRYPTO}x509v3/v3_skey.c
${CRYPTO}x509v3/v3_sxnet.c
${CRYPTO}x509v3/v3_utl.c
#${CRYPTO}x509v3/v3conf.c		<- looks broken on the face of it.
${CRYPTO}x509v3/v3err.c
#${CRYPTO}x509v3/v3nametest.c	<- don't need this
#${CRYPTO}x509v3/v3prin.c		<- don't need this
)

###########################################################################################
# INC
###########################################################################################
list( APPEND XINC 
${CRYPTO}aes/aes_locl.h
${CRYPTO}aes/aes.h
#${CRYPTO}arm_arch.h	<- TODO: include when x-compiling?
${CRYPTO}asn1/asn1_int.h
${CRYPTO}asn1/asn1_locl.h
${CRYPTO}asn1/asn1_mac.h
${CRYPTO}asn1/asn1.h
${CRYPTO}asn1/asn1t.h
${CRYPTO}asn1/charmap.h
${CRYPTO}bf/bf_locl.h
${CRYPTO}bf/bf_pi.h
${CRYPTO}bf/blowfish.h
${CRYPTO}bio/bio_lcl.h
${CRYPTO}bio/bio.h
${CRYPTO}bn/bn_lcl.h
${CRYPTO}bn/bn_prime.h
${CRYPTO}bn/bn.h
${CRYPTO}bn/rsaz_exp.h
${CRYPTO}buffer/buffer.h
${CRYPTO}camellia/camellia.h
${CRYPTO}camellia/cmll_locl.h
${CRYPTO}cast/cast_lcl.h
${CRYPTO}cast/cast_s.h
${CRYPTO}cast/cast.h
${CRYPTO}cmac/cmac.h
${CRYPTO}cms/cms_lcl.h
${CRYPTO}cms/cms.h
${CRYPTO}comp/comp.h
${CRYPTO}conf/conf_api.h
${CRYPTO}conf/conf_def.h
${CRYPTO}conf/conf.h
${CRYPTO}constant_time_locl.h
${CRYPTO}cryptlib.h
${CRYPTO}crypto.h
${CRYPTO}des/des_locl.h
${CRYPTO}des/des_old.h
${CRYPTO}des/des_ver.h
${CRYPTO}des/des.h
${CRYPTO}des/rpc_des.h
${CRYPTO}des/spr.h
${CRYPTO}dh/dh.h
${CRYPTO}dsa/dsa_locl.h
${CRYPTO}dsa/dsa.h
${CRYPTO}dso/dso.h
${CRYPTO}ebcdic.h
${CRYPTO}ec/ec_lcl.h
${CRYPTO}ec/ec.h
${CRYPTO}ecdh/ecdh.h
${CRYPTO}ecdh/ech_locl.h
${CRYPTO}ecdsa/ecdsa.h
${CRYPTO}ecdsa/ecs_locl.h
${CRYPTO}engine/eng_int.h
${CRYPTO}engine/engine.h
${CRYPTO}err/err.h
${CRYPTO}evp/evp_locl.h
${CRYPTO}evp/evp.h
${CRYPTO}fips_err.h
${CRYPTO}hmac/hmac.h
${CRYPTO}idea/idea_lcl.h
${CRYPTO}idea/idea.h
${CRYPTO}jpake/jpake.h
${CRYPTO}krb5/krb5_asn.h
${CRYPTO}lhash/lhash.h
${CRYPTO}md2/md2.h
${CRYPTO}md32_common.h
${CRYPTO}md4/md4_locl.h
${CRYPTO}md4/md4.h
${CRYPTO}md5/md5_locl.h
${CRYPTO}md5/md5.h
${CRYPTO}mdc2/mdc2.h
${CRYPTO}modes/modes_lcl.h
${CRYPTO}modes/modes.h
${CRYPTO}o_dir.h
${CRYPTO}o_str.h
${CRYPTO}o_time.h
${CRYPTO}objects/obj_dat.h
${CRYPTO}objects/obj_mac.h
${CRYPTO}objects/obj_xref.h
${CRYPTO}objects/objects.h
${CRYPTO}ocsp/ocsp.h
${CRYPTO}opensslv.h
${CRYPTO}ossl_typ.h
${CRYPTO}pem/pem.h
${CRYPTO}pem/pem2.h
${CRYPTO}pkcs12/pkcs12.h
${CRYPTO}pkcs7/pkcs7.h
${CRYPTO}ppc_arch.h
${CRYPTO}pqueue/pqueue.h
${CRYPTO}rand/rand_lcl.h
${CRYPTO}rand/rand.h
${CRYPTO}rc2/rc2_locl.h
${CRYPTO}rc2/rc2.h
${CRYPTO}rc4/rc4_locl.h
${CRYPTO}rc4/rc4.h
${CRYPTO}rc5/rc5_locl.h
${CRYPTO}rc5/rc5.h
${CRYPTO}ripemd/ripemd.h
${CRYPTO}ripemd/rmd_locl.h
${CRYPTO}ripemd/rmdconst.h
${CRYPTO}rsa/rsa_locl.h
${CRYPTO}rsa/rsa.h
${CRYPTO}seed/seed_locl.h
${CRYPTO}seed/seed.h
${CRYPTO}sha/sha_locl.h
${CRYPTO}sha/sha.h
${CRYPTO}sparc_arch.h
${CRYPTO}srp/srp_grps.h
${CRYPTO}srp/srp_lcl.h
${CRYPTO}srp/srp.h
${CRYPTO}stack/safestack.h
${CRYPTO}stack/stack.h
${CRYPTO}store/store.h
${CRYPTO}store/str_locl.h
${CRYPTO}symhacks.h
${CRYPTO}ts/ts.h
${CRYPTO}txt_db/txt_db.h
${CRYPTO}ui/ui_compat.h
${CRYPTO}ui/ui_locl.h
${CRYPTO}ui/ui.h
#${CRYPTO}vms_rms.h  <- really?!
${CRYPTO}whrlpool/whrlpool.h
${CRYPTO}whrlpool/wp_locl.h
${CRYPTO}x509/vpm_int.h
${CRYPTO}x509/x509_vfy.h
${CRYPTO}x509/x509.h
${CRYPTO}x509v3/ext_dat.h
${CRYPTO}x509v3/pcy_int.h
${CRYPTO}x509v3/x509v3.h
)
