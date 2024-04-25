module.exports = {
  env: {
    browser: false,
    es6: true,
    node: true,
  },
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: "tsconfig.json",
    sourceType: "module",
    ecmaVersion: 2020,
  },
  plugins: ["@typescript-eslint", "prettier"],
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "prettier",
  ],
  rules: {
    "prettier/prettier": "error",
    "@typescript-eslint/no-unused-vars": 1,
    "no-console": 1,
    "@typescript-eslint/no-shadow": "error",
    "no-undef": 2,
    "@typescript-eslint/no-floating-promises": "error",
    "@typescript-eslint/await-thenable": "error",
    "@typescript-eslint/no-misused-promises": 2,
    "no-restricted-imports": [
      "error",
      {
        paths: ["src"],
        patterns: ["src/*"],
      },
    ],
    "@typescript-eslint/no-non-null-assertion": 0,
  },
};
