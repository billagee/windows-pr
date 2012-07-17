require 'windows/api'

module Windows
  module Security
    module SSPI
      API.auto_namespace = 'Windows::Security::SSPI'
      API.auto_constant  = true
      API.auto_method    = true
      API.auto_unicode   = true

      private

      SECPKG_CRED_INBOUND = 0x00000001
      SECPKG_CRED_OUTBOUND = 0x00000002
      SECPKG_CRED_BOTH = 0x00000003
      SECPKG_CRED_AUTOLOGON_RESTRICTED = 0x00000010
      SECPKG_CRED_PROCESS_POLICY_ONLY = 0x00000020

      SECURITY_NATIVE_DREP = 0x00000010
      SECURITY_NETWORK_DREP = 0x00000000

      ISC_REQ_DELEGATE               = 0x00000001
      ISC_REQ_MUTUAL_AUTH            = 0x00000002
      ISC_REQ_REPLAY_DETECT          = 0x00000004
      ISC_REQ_SEQUENCE_DETECT        = 0x00000008
      ISC_REQ_CONFIDENTIALITY        = 0x00000010
      ISC_REQ_USE_SESSION_KEY        = 0x00000020
      ISC_REQ_PROMPT_FOR_CREDS       = 0x00000040
      ISC_REQ_USE_SUPPLIED_CREDS     = 0x00000080
      ISC_REQ_ALLOCATE_MEMORY        = 0x00000100
      ISC_REQ_USE_DCE_STYLE          = 0x00000200
      ISC_REQ_DATAGRAM               = 0x00000400
      ISC_REQ_CONNECTION             = 0x00000800
      ISC_REQ_CALL_LEVEL             = 0x00001000
      ISC_REQ_FRAGMENT_SUPPLIED      = 0x00002000
      ISC_REQ_EXTENDED_ERROR         = 0x00004000
      ISC_REQ_STREAM                 = 0x00008000
      ISC_REQ_INTEGRITY              = 0x00010000
      ISC_REQ_IDENTIFY               = 0x00020000
      ISC_REQ_NULL_SESSION           = 0x00040000
      ISC_REQ_MANUAL_CRED_VALIDATION = 0x00080000
      ISC_REQ_RESERVED1              = 0x00100000
      ISC_REQ_FRAGMENT_TO_FIT        = 0x00200000
      ISC_REQ_FORWARD_CREDENTIALS    = 0x00400000
      ISC_REQ_NO_INTEGRITY           = 0x00800000 # honored only by SPNEGO
      ISC_REQ_USE_HTTP_STYLE         = 0x01000000

      SEC_E_OK = 0x00000000
      SEC_I_CONTINUE_NEEDED = 0x00090312
      SEC_E_INSUFFICIENT_MEMORY = 0x80090300
      SEC_E_INTERNAL_ERROR = 0x80090304
      SEC_E_INVALID_HANDLE = 0x80090301
      SEC_E_INVALID_TOKEN = 0x80090308
      SEC_E_LOGON_DENIED = 0x8009030C
      SEC_E_NO_AUTHENTICATING_AUTHORITY = 0x80090311
      SEC_E_NO_CREDENTIALS = 0x8009030E
      SEC_E_TARGET_UNKNOWN = 0x80090303
      SEC_E_UNSUPPORTED_FUNCTION = 0x80090302
      SEC_E_WRONG_PRINCIPAL = 0x80090322
      SEC_E_NOT_OWNER = 0x80090306
      SEC_E_SECPKG_NOT_FOUND = 0x80090305
      SEC_E_UNKNOWN_CREDENTIALS = 0x8009030D

      SEC_WINNT_AUTH_IDENTITY_ANSI    = 0x1
      SEC_WINNT_AUTH_IDENTITY_UNICODE = 0x2

      API.new('AcceptSecurityContext', 'LPPLLPPPP', 'L', 'secur32')
      API.new('AcquireCredentialsHandle', 'PPLPPPPPP', 'L', 'secur32')
      API.new('ApplyControlToken', 'PP', 'L', 'secur32')
      API.new('CompleteAuthToken', 'PP', 'L', 'secur32')
      API.new('DecryptMessage', 'LPLP', 'L', 'secur32')
      API.new('DeleteSecurityContext', 'L', 'L', 'secur32')
      API.new('EncryptMessage', 'LLPL', 'L', 'secur32')
      API.new('EnumerateSecurityPackages', 'PP', 'L', 'secur32')
      API.new('ExportSecurityContext', 'PLPP', 'L', 'secur32')
      API.new('FreeContextBuffer', 'P', 'L', 'secur32')
      API.new('FreeCredentialsHandle', 'P', 'L', 'secur32')
      API.new('ImpersonateSecurityContext', 'L', 'L', 'secur32')
      API.new('ImportSecurityContext', 'PPLP', 'L', 'secur32')
      API.new('InitializeSecurityContext', 'LPPLLLPLPPPP', 'L', 'secur32')
      API.new('InitSecurityInterface', 'V', 'P', 'secur32')
      API.new('MakeSignature', 'LLPL', 'L', 'secur32')
      API.new('QueryContextAttributes', 'LLP', 'L', 'secur32')
      API.new('QueryCredentialsAttributes', 'LLP', 'L', 'secur32')
      API.new('QuerySecurityContextToken', 'LP', 'L', 'secur32')
      API.new('QuerySecurityPackageInfo', 'PP', 'L', 'secur32')
      API.new('RevertSecurityContext', 'L', 'L', 'secur32')
      API.new('SetContextAttributes', 'LLPL', 'L', 'secur32')
      API.new('VerifySignature', 'LPLP', 'L', 'secur32')
    end
  end
end
