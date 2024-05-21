package com.example.jet_pack_compose_trial

import com.example.jet_pack_compose_trial.ui.theme.Jet_pack_compose_trialTheme

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Jet_pack_compose_trialTheme {
                Surface(color = MaterialTheme.colorScheme.background) {
                    CounterScreen()
                }
            }
        }
    }
}

@Composable
fun CounterScreen() {
    var count by remember { mutableStateOf(0) }

    Column(modifier = Modifier.padding(16.dp)) {
        Text(text = "Count: $count", style = MaterialTheme.typography.headlineMedium)
        Button(onClick = { count++ }, modifier = Modifier.padding(top = 16.dp)) {
            Text("Increment")
        }
        Button(onClick = { count-- }, modifier = Modifier.padding(top = 16.dp)) {
            Text("Decrement")
        }
        Button(onClick = { count = 0 }, modifier = Modifier.padding(top = 16.dp)) {
            Text("Reset")
        }
    }
}
