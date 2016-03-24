require "sql_injection_matcher/version"

module SqlInjectionMatcher
  SQL_INJECTION_REGEX_STR = "('(''|[^'])*')|(;)|(\b(ALTER|CREATE|DELETE|DROP|EXEC(UTE){0,1}|INSERT( +INTO){0,1}|MERGE|SELECT|UPDATE|UNION( +ALL){0,1})\b)"

  def self.is_sql_injection?(string)
    !Regexp.new(SQL_INJECTION_REGEX_STR).match(string).nil?
  end
end
