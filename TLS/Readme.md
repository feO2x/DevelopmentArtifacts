#How to use these scripts

The two scripts in this folder can be used to create certificates for development scenarios of web apps.

## Creating a Root Certificate

If you don't have a root certificate yet, you should create it first. The `CreateRootCertificate.cmd` script takes one parameter (the name of the root certificate) and creates a certificate with public (\*.cer) and private key (\*.pvk). Furthermore, the two are combined into one \*.pfx file.

This root certificate can then be used to derive sub-certificates from it. I recommend using one sub-certificate per project. The public root certificate should then be deployed to all browsers that want to accept client certificates.

Example:

```
CreateRootCertificate.cmd RootCertificateName
```

## Creating a Derived Certficate

When you have your root certificate in place, you can derive other certificates from it. The `CreateDerivedCertificate.cmd` script takes two parameters

- the first is the name of the derived certificate.
- the second is the name of the parent certificate.

This script also create public (\*.cer), private (\*.pvk), and combined (\*.pfx) certificates files. Usually, you will use the pfx file in your web apps to establish trust between service and client. Check your web framework's / web server's documentation on how to enable the pfx certificate.

Example:

```
CreateDerivedCertificate.cmd DerivedCertificateName RootCertificateName
```