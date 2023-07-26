# capacitor-plugin-assignment

Custom capacitor plugin in order to close the gap between a web stack based application and the native world

## Install

```bash
npm install capacitor-plugin-assignment
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`getLatestCover()`](#getlatestcover)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### getLatestCover()

```typescript
getLatestCover() => Promise<[string]>
```

**Returns:** <code>Promise&lt;[string]&gt;</code>

--------------------

</docgen-api>
