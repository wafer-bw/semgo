package semgo

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestSayHello(t *testing.T) {
	t.Run("success", func(t *testing.T) {
		txt := SayHello()
		require.Contains(t, txt, "hello")
	})
}
